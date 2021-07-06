local DrawingRender = {}

function DrawingRender:DrawBlock()
	local Functions = {CFrame = CFrame.new(0,0,0),Size = Vector3.new(1,1,1)}

	local function DrawVertex(Points,Filled,Thickness)
		local NewVertex = Drawing.new("Quad")
		local FuncTable = {}
		FuncTable.Points = Points
		FuncTable.Filled = Filled
		FuncTable.Thickness = Thickness
		FuncTable.Visible = true
		local UpdtCon = game:GetService("RunService").Heartbeat:Connect(function()
			local RPoints = {}
			local AnyCanSee = false
			for _,i in pairs(FuncTable.Points) do
				local Vector,CanSee = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(i)
				if CanSee == true then
					AnyCanSee = true
				end
				table.insert(RPoints,Vector2.new(Vector.X,Vector.Y))
			end
			if AnyCanSee == false then
				NewVertex.Visible = false
			else
				NewVertex.Visible = FuncTable.Visible
			end
			NewVertex.PointA = RPoints[1]
			NewVertex.PointB = RPoints[2]
			NewVertex.PointC = RPoints[3]
			NewVertex.PointD = RPoints[4]
			NewVertex.Filled = FuncTable.Filled
			NewVertex.Thickness = FuncTable.Thickness
		end)
		NewVertex.Visible = true
		return NewVertex,UpdtCon,FuncTable
	end

	local Connections = {}
	local function AddConn(Conn)
		table.insert(Connections,Conn)
	end
	local function TableKill()
		for _,i in pairs(Connections) do
			pcall(function()
				i:Disconnect()
			end)
		end
		Connections = {}
	end
	
	Functions.Visible = true
	Functions.Thickness = 5
	Functions.Filled = true
	Functions.TopColor = Color3.new(1,1,1)
	Functions.BottomColor = Color3.new(1,1,1)
	Functions.LeftColor = Color3.new(1,1,1)
	Functions.RightColor = Color3.new(1,1,1)
	Functions.FrontColor = Color3.new(1,1,1)
	Functions.BackColor = Color3.new(1,1,1)
	Functions.Color = Color3.new(1,1,1)


	local DrawingItemTop,ConnTop,UpdateTop = DrawVertex({Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0)},Filled,Thickness)
	local DrawingItemBottom,ConnBottom,UpdateBottom = DrawVertex({Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0)},Filled,Thickness)

	local DrawingItemLeft,ConnLeft,UpdateLeft = DrawVertex({Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0)},Filled,Thickness)
	local DrawingItemRight,ConnRight,UpdateRight = DrawVertex({Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0)},Filled,Thickness)

	local DrawingItemFront,ConnFront,UpdateFront = DrawVertex({Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0)},Filled,Thickness)
	local DrawingItemBack,ConnBack,UpdateBack = DrawVertex({Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0)},Filled,Thickness)

	AddConn(ConnTop)
	AddConn(ConnBottom)
	AddConn(ConnLeft)
	AddConn(ConnRight)
	AddConn(ConnFront)
	AddConn(ConnBack)
	local LastColor = nil
	local MainConn = game:GetService("RunService").Heartbeat:Connect(function()
		local CFrameRotMatrix = {Functions.CFrame:GetComponents()}
		local RotMatrixX = Vector3.new(CFrameRotMatrix[4],CFrameRotMatrix[5],CFrameRotMatrix[6])
		local RotMatrixY = Vector3.new(CFrameRotMatrix[7],CFrameRotMatrix[8],CFrameRotMatrix[9])
		local RotMatrixZ = Vector3.new(CFrameRotMatrix[10],CFrameRotMatrix[11],CFrameRotMatrix[12])

		local VertexBaseA = Functions.CFrame - (Functions.Size/2)
		local VertexBaseB = Functions.CFrame + (Functions.Size/2)
		local VertexTop = {
			Vector3.new(VertexBaseA.X,VertexBaseB.Y,VertexBaseA.Z),
			Vector3.new(VertexBaseA.X,VertexBaseB.Y,VertexBaseB.Z),
			Vector3.new(VertexBaseB.X,VertexBaseB.Y,VertexBaseB.Z),
			Vector3.new(VertexBaseB.X,VertexBaseB.Y,VertexBaseA.Z)
		}
		UpdateTop.Points = VertexTop
		UpdateTop.Filled = Functions.Filled
		UpdateTop.Thickness = Functions.Thickness
		UpdateTop.Visible = Functions.Visible

		local VertexBottom = {
			Vector3.new(VertexBaseA.X,VertexBaseA.Y,VertexBaseA.Z),
			Vector3.new(VertexBaseA.X,VertexBaseA.Y,VertexBaseB.Z),
			Vector3.new(VertexBaseB.X,VertexBaseA.Y,VertexBaseB.Z),
			Vector3.new(VertexBaseB.X,VertexBaseA.Y,VertexBaseA.Z)
		}
		UpdateBottom.Points = VertexBottom
		UpdateBottom.Filled = Functions.Filled
		UpdateBottom.Thickness = Functions.Thickness
		UpdateBottom.Visible = Functions.Visible

		local VertexLeft = {
			Vector3.new(VertexBaseB.X,VertexBaseB.Y,VertexBaseA.Z),
			Vector3.new(VertexBaseB.X,VertexBaseB.Y,VertexBaseB.Z),
			Vector3.new(VertexBaseB.X,VertexBaseA.Y,VertexBaseB.Z),
			Vector3.new(VertexBaseB.X,VertexBaseA.Y,VertexBaseA.Z)
		}
		UpdateLeft.Points = VertexLeft
		UpdateLeft.Filled = Functions.Filled
		UpdateLeft.Thickness = Functions.Thickness
		UpdateLeft.Visible = Functions.Visible
		
		local VertexRight = {
			Vector3.new(VertexBaseA.X,VertexBaseA.Y,VertexBaseB.Z),
			Vector3.new(VertexBaseA.X,VertexBaseA.Y,VertexBaseA.Z),
			Vector3.new(VertexBaseA.X,VertexBaseB.Y,VertexBaseA.Z),
			Vector3.new(VertexBaseA.X,VertexBaseB.Y,VertexBaseB.Z)
		}
		UpdateRight.Points = VertexRight
		UpdateRight.Filled = Functions.Filled
		UpdateRight.Thickness = Functions.Thickness
		UpdateRight.Visible = Functions.Visible
		
		local VertexFront = {
			Vector3.new(VertexBaseA.X,VertexBaseA.Y,VertexBaseA.Z),
			Vector3.new(VertexBaseB.X,VertexBaseA.Y,VertexBaseA.Z),
			Vector3.new(VertexBaseB.X,VertexBaseB.Y,VertexBaseA.Z),
			Vector3.new(VertexBaseA.X,VertexBaseB.Y,VertexBaseA.Z)
		}
		UpdateFront.Points = VertexFront
		UpdateFront.Filled = Functions.Filled
		UpdateFront.Thickness = Functions.Thickness
		UpdateFront.Visible = Functions.Visible
		local VertexBack = {
			Vector3.new(VertexBaseB.X,VertexBaseA.Y,VertexBaseB.Z),
			Vector3.new(VertexBaseA.X,VertexBaseA.Y,VertexBaseB.Z),
			Vector3.new(VertexBaseA.X,VertexBaseB.Y,VertexBaseB.Z),
			Vector3.new(VertexBaseB.X,VertexBaseB.Y,VertexBaseB.Z)
		}
		UpdateBack.Points = VertexBack
		UpdateBack.Filled = Functions.Filled
		UpdateBack.Thickness = Functions.Thickness
		UpdateBack.Visible = Functions.Visible

		if Functions.Color ~= LastColor then
			Functions.TopColor = Functions.Color
			Functions.BottomColor = Functions.Color
			Functions.LeftColor = Functions.Color
			Functions.RightColor = Functions.Color
			Functions.FrontColor = Functions.Color
			Functions.BackColor = Functions.Color
			LastColor = Functions.Color
		end

		DrawingItemTop.Color = Functions.TopColor
		DrawingItemBottom.Color = Functions.BottomColor
		DrawingItemLeft.Color = Functions.LeftColor
		DrawingItemRight.Color = Functions.RightColor
		DrawingItemFront.Color = Functions.FrontColor
		DrawingItemBack.Color = Functions.BackColor

	end)
	function Functions:Destroy()
		MainConn:Disconnect()
		DrawingItemTop:Remove()
		DrawingItemBottom:Remove()
		DrawingItemLeft:Remove()
		DrawingItemRight:Remove()
		DrawingItemFront:Remove()
		DrawingItemBack:Remove()
		TableKill()
		function Functions:Destroy()
			return nil
		end
	end
	return Functions
end
return DrawingRender
