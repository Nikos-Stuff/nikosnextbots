// Shader written by Enchanted_Games (https://enchanted.games)
// You may edit and use this code as part of maps / other resourcepacks as long as credits are given to Enchanted_Games

// Any functions not made by me will include a credit line at the top of them

// Generated with https://outlines.enchanted.games

//    -- CONFIG STARTS HERE --
//         !! WARNING !!
//     Do not copy config from
//     an older version of this
//   pack, it will probably crash!

const vec4 block_COLOURS[] = vec4[](
vec4(0.9764705882, 0.2392156863, 0.2392156863, 0.0),
vec4(0.6823529412, 0.2392156863, 0.9764705882, 1.0)
);
#define block_ANIM_SPEED 200
#define block_COLOUR_PERIOD 0.5
#define block_SMOOTH_MIX false
#define block_ANIMATE_WITH_DISTANCE true
#define block_ANIMATE_ALONG_LINES true
#define block_ANIM_DIRECTION -1
#define block_LINE_THICKNESS 12
#define block_IGNORES_DEPTH false

const vec4 hc_block_COLOURS[] = vec4[](
vec4(1.0, 1.0, 1.0, 1.0),
vec4(1.0, 1.0, 1.0, 1.0)
);
#define hc_block_ANIM_SPEED 1300
#define hc_block_COLOUR_PERIOD 2.5
#define hc_block_SMOOTH_MIX false
#define hc_block_ANIMATE_WITH_DISTANCE true
#define hc_block_ANIMATE_ALONG_LINES false
#define hc_block_ANIM_DIRECTION -1
#define hc_block_LINE_THICKNESS 3
#define hc_block_IGNORES_DEPTH false

const vec4 hc_block_outer_COLOURS[] = vec4[](
vec4(0.0, 0.0, 0.0, 1.0),
vec4(1.0, 1.0, 1.0, 1.0)
);
#define hc_block_outer_ANIM_SPEED 1400
#define hc_block_outer_COLOUR_PERIOD 2
#define hc_block_outer_SMOOTH_MIX true
#define hc_block_outer_ANIMATE_WITH_DISTANCE true
#define hc_block_outer_ANIMATE_ALONG_LINES false
#define hc_block_outer_ANIM_DIRECTION -1
#define hc_block_outer_LINE_THICKNESS 7
#define hc_block_outer_IGNORES_DEPTH false

const vec4 hitbox_COLOURS[] = vec4[](
vec4(1.0, 0.4549019608, 0.062745098, 1.0),
vec4(0.9960784314, 0.8823529412, 0.0784313725, 1.0),
vec4(1.0, 1.0, 1.0, 1.0)
);
#define hitbox_ANIM_SPEED 400
#define hitbox_COLOUR_PERIOD 0.5
#define hitbox_SMOOTH_MIX false
#define hitbox_ANIMATE_WITH_DISTANCE false
#define hitbox_ANIMATE_ALONG_LINES true
#define hitbox_ANIM_DIRECTION -1
#define hitbox_LINE_THICKNESS 3
#define hitbox_APPLY_TO_ALL_LINES false