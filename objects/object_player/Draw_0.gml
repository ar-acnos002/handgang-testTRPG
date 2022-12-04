/// @description Insert description here
// You can write your code in this editor


shader_set(shader_billboarding)

var transMat = matrix_build(x+32, y+32, z, 0, 0, 0, 1, 1, 1)

matrix_set(matrix_world, transMat)

draw_sprite(sprite_index, image_index, 0, 0)

matrix_set(matrix_world, matrix_build_identity())

shader_reset()