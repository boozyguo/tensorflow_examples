
4
PlaceholderPlaceholder*
dtype0*
shape: 
*
IdentityIdentityPlaceholder*
T0
6
Placeholder_1Placeholder*
dtype0*
shape: 
6
Placeholder_2Placeholder*
dtype0*
shape: 
A
weight/initial_valueConst*
dtype0*
valueB
 *    
P
weightVariable*
dtype0*
shape: *
	container *
shared_name 
�
weight/AssignAssignweightweight/initial_value*
validate_shape(*
_class
loc:@weight*
use_locking(*
T0
C
weight/readIdentityweight*
_class
loc:@weight*
T0
?
bias/initial_valueConst*
dtype0*
valueB
 *    
N
biasVariable*
dtype0*
shape: *
	container *
shared_name 
z
bias/AssignAssignbiasbias/initial_value*
validate_shape(*
_class
	loc:@bias*
use_locking(*
T0
=
	bias/readIdentitybias*
_class
	loc:@bias*
T0
C
global_step/initial_valueConst*
dtype0*
value	B : 
U
global_stepVariable*
dtype0*
shape: *
	container *
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/initial_value*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0
R
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0
/
MulMulPlaceholder_1weight/read*
T0
'
subSubPlaceholder_2Mul*
T0
%
sub_1Subsub	bias/read*
T0
 
SquareSquaresub_1*
T0
)
gradients/ShapeShapeSquare*
T0
<
gradients/ConstConst*
dtype0*
valueB
 *  �?
A
gradients/FillFillgradients/Shapegradients/Const*
T0
Y
gradients/Square_grad/mul/xConst^gradients/Fill*
dtype0*
valueB
 *   @
M
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub_1*
T0
V
gradients/Square_grad/mul_1Mulgradients/Fillgradients/Square_grad/mul*
T0
1
gradients/sub_1_grad/ShapeShapesub*
T0
9
gradients/sub_1_grad/Shape_1Shape	bias/read*
T0
}
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1
�
gradients/sub_1_grad/SumSumgradients/Square_grad/mul_1*gradients/sub_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
f
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0
�
gradients/sub_1_grad/Sum_1Sumgradients/Square_grad/mul_1,gradients/sub_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
D
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0
j
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
T0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
�
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*
T0
�
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*
T0
9
gradients/sub_grad/ShapeShapePlaceholder_2*
T0
1
gradients/sub_grad/Shape_1ShapeMul*
T0
w
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1
�
gradients/sub_grad/SumSum-gradients/sub_1_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
`
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0
�
gradients/sub_grad/Sum_1Sum-gradients/sub_1_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
@
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0
d
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*-
_class#
!loc:@gradients/sub_grad/Reshape*
T0
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
T0
9
gradients/Mul_grad/ShapeShapePlaceholder_1*
T0
9
gradients/Mul_grad/Shape_1Shapeweight/read*
T0
w
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1
b
gradients/Mul_grad/mulMul-gradients/sub_grad/tuple/control_dependency_1weight/read*
T0
y
gradients/Mul_grad/SumSumgradients/Mul_grad/mul(gradients/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
`
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0
f
gradients/Mul_grad/mul_1MulPlaceholder_1-gradients/sub_grad/tuple/control_dependency_1*
T0

gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
f
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
�
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*-
_class#
!loc:@gradients/Mul_grad/Reshape*
T0
�
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1*
T0
J
GradientDescent/learning_rateConst*
dtype0*
valueB
 *
�#<
�
2GradientDescent/update_weight/ApplyGradientDescentApplyGradientDescentweightGradientDescent/learning_rate-gradients/Mul_grad/tuple/control_dependency_1*
_class
loc:@weight*
use_locking( *
T0
�
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate/gradients/sub_1_grad/tuple/control_dependency_1*
_class
	loc:@bias*
use_locking( *
T0
�
GradientDescent/updateNoOp3^GradientDescent/update_weight/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent
x
GradientDescent/valueConst^GradientDescent/update*
dtype0*
_class
loc:@global_step*
value	B :
|
GradientDescent	AssignAddglobal_stepGradientDescent/value*
_class
loc:@global_step*
use_locking( *
T0
1
Mul_1MulPlaceholder_1weight/read*
T0
%
addAddMul_1	bias/read*
T0
1
Mul_2MulPlaceholder_1weight/read*
T0
'
add_1AddMul_2	bias/read*
T0
4
add_2/yConst*
dtype0*
valueB
 *  �?
%
add_2Addadd_1add_2/y*
T0
8

save/ConstConst*
dtype0*
valueB Bmodel
9
save/num_shardsConst*
dtype0*
value	B :
D
save/ShardedFilename/shardConst*
dtype0*
value	B : 
`
save/ShardedFilenameShardedFilename
save/Constsave/ShardedFilename/shardsave/num_shards
\
save/save/tensor_namesConst*
dtype0*.
value%B#BbiasBglobal_stepBweight
L
save/save/shapes_and_slicesConst*
dtype0*
valueBB B B 
�
	save/save
SaveSlicessave/ShardedFilenamesave/save/tensor_namessave/save/shapes_and_slicesbiasglobal_stepweight*
T
2
w
save/control_dependencyIdentitysave/ShardedFilename
^save/save*'
_class
loc:@save/ShardedFilename*
T0
^
save/ShardedFilespecShardedFilespec
save/Constsave/num_shards^save/control_dependency
K
save/restore_slice/tensor_nameConst*
dtype0*
valueB
 Bbias
K
"save/restore_slice/shape_and_sliceConst*
dtype0*
valueB B 
�
save/restore_sliceRestoreSlice
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
preferred_shard *
dt0
z
save/AssignAssignbiassave/restore_slice*
validate_shape(*
_class
	loc:@bias*
use_locking(*
T0
T
 save/restore_slice_1/tensor_nameConst*
dtype0*
valueB Bglobal_step
M
$save/restore_slice_1/shape_and_sliceConst*
dtype0*
valueB B 
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
preferred_shard *
dt0
�
save/Assign_1Assignglobal_stepsave/restore_slice_1*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0
O
 save/restore_slice_2/tensor_nameConst*
dtype0*
valueB Bweight
M
$save/restore_slice_2/shape_and_sliceConst*
dtype0*
valueB B 
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
preferred_shard *
dt0
�
save/Assign_2Assignweightsave/restore_slice_2*
validate_shape(*
_class
loc:@weight*
use_locking(*
T0
H
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2
-
save/restore_allNoOp^save/restore_shard
?
initNoOp^weight/Assign^bias/Assign^global_step/Assign"	