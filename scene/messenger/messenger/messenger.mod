MessengerKernels = {
     -- SCLK
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_0621.tsc",
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_0766.tsc",
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_1147.tsc",
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_1289.tsc",
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_1445.tsc",
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_1630.tsc",
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_1811.tsc",
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_1993.tsc",
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_2188.tsc",
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_2339.tsc",
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_2548.tsc",
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_402.tsc",
    "${OPENSPACE_DATA}/spice/Messenger/sclk/messenger_478.tsc",


    -- LSK


    -- SPK
    "${OPENSPACE_DATA}/spice/Messenger/spk/de405.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_071001_120401.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_080216_120401.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_081107_120401.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_091031_120401.bsp",

    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_110601_120401_od216sc.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_111130_120401_od242sc_0.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_120516_140823_od268sc_0.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_121031_140822_od292sc_0.bsp",

    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_130501_140822_od318sc_0.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_131002_150328_od340sc_0.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_140430_150328_od370sc_2.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_141008_150328_od395sc_0.bsp",

    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_150430_150430_od431sc_0.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_040803_150430_150430_od431sc_2.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_antenna_v000.bsp",
    "${OPENSPACE_DATA}/spice/Messenger/spk/msgr_de405_de423s.bsp",

    -- CK
    "${OPENSPACE_DATA}/spice/Messenger/ck/msgr_1105_v02.bc",


    -- IK
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_epps_v010.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_epps_v100.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_grns_v001.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_grns_v110.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_mag_v020.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_mag_v021.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_mascs_v010.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_mascs_v011.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_mdis_v011.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_mdis_v100.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_mdis_v112.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_mdis_v120.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_mdis_v131.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_mdis_v140.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_mdis_v160.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_mla_v010.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_rs_v100.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_rs_v110.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_rs_v100.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_rs_v110.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_rs_v111.ti",
    "${OPENSPACE_DATA}/spice/Messenger/ik/msgr_xrs_v001.ti",


    -- PCK
    "${OPENSPACE_DATA}/spice/Messenger/pck/pck00008.tpc",
    "${OPENSPACE_DATA}/spice/Messenger/pck/pck00008_msgr.tpc",
    "${OPENSPACE_DATA}/spice/Messenger/pck/pck00009_msgr_v10.tpc",
    "${OPENSPACE_DATA}/spice/Messenger/pck/pck00010_msgr_v10.tpc",
    "${OPENSPACE_DATA}/spice/Messenger/pck/pck00010_msgr_v23.tpc",
    "${OPENSPACE_DATA}/spice/Messenger/pck/pck00010.tpc",
}

RotationMatrix = {
    0, 1, 0,
    0, 0, 1,
    1, 0, 0
}



return {
{
    Name = "Messenger",
    Parent = "SolarSystemBarycenter",

    Transform = {
        Translation = {
          Type = "SpiceTranslation",
          Body = "MESSENGER",
          Observer = "SUN",
          Kernels = MessengerKernels
        },
        Rotation = {
          Type = "SpiceRotation",
          SourceFrame = "MES_SPACECRAFT",
          DestinationFrame = "GALACTIC",
        },
        Scale = {
              Type = "StaticScale",
              Scale = 35000
        }
    }
},
{
        Name = "MessengerProbe_black",
        Parent = "Messenger",
        Renderable = {
            Type = "RenderableModel",
            Body = "MESSENGER",
            Geometry = {
                Type = "MultiModelGeometry",
                GeometryFile = "models/MessengerProbe_black.obj"
            },
            Textures = {
                Type = "simple",
                Color = "textures/Tex_black.png"
            },
            Shading = {
                PerformShading = true,
                Fadeable = false,
                Ghosting = false,
            },
            Rotation = { ModelTransform = RotationMatrix }
        }
},
{
        Name = "MessengerProbe_foil",
        Parent = "Messenger",
        Renderable = {
            Type = "RenderableModel",
            Body = "MESSENGER",
            Geometry = {
                Type = "MultiModelGeometry",
                GeometryFile = "models/MessengerProbe_foil.obj"
            },
            Textures = {
                Type = "simple",
                Color = "textures/foil_n2.png"
            },
            Shading = {
                PerformShading = true,
                Fadeable = false,
                Ghosting = false,
            },
            Rotation = { ModelTransform = RotationMatrix }
        }
},
{
        Name = "MessengerProbe_heatShield",
        Parent = "Messenger",
        Renderable = {
            Type = "RenderableModel",
            Body = "MESSENGER",
            Geometry = {
                Type = "MultiModelGeometry",
                GeometryFile = "models/MessengerProbe_heatShield.obj"
            },
            Textures = {
                Type = "simple",
                Color = "textures/AO_heatshield4.png"
            },
            Shading = {
                PerformShading = true,
                Fadeable = false,
                Ghosting = false,
            },
            Rotation = { ModelTransform = RotationMatrix }
        }
},
{
        Name = "MessengerProbe_metal",
        Parent = "Messenger",
        Renderable = {
            Type = "RenderableModel",
            Body = "MESSENGER",
            Geometry = {
                Type = "MultiModelGeometry",
                GeometryFile = "models/MessengerProbe_metal.obj"
            },
            Textures = {
                Type = "simple",
                Color = "textures/Tex_grey.png"
            },
            Shading = {
                PerformShading = true,
                Fadeable = false,
                Ghosting = false,
            },
            Rotation = { ModelTransform = RotationMatrix }
        }
},
{
        Name = "MessengerProbe_panels",
        Parent = "Messenger",
        Renderable = {
            Type = "RenderableModel",
            Body = "MESSENGER",
            Geometry = {
                Type = "MultiModelGeometry",
                GeometryFile = "models/MessengerProbe_panels.obj"
            },
            Textures = {
                Type = "simple",
                Color = "textures/Messenger_tex.png"
            },
            Shading = {
                PerformShading = true,
                Fadeable = false,
                Ghosting = false,
            },
            Rotation = { ModelTransform = RotationMatrix }
        }
},
-- Messenger Trail
{
    Name = "MessengerTrail",
    Parent = "MercuryBarycenter",
    Renderable = {
        Type = "RenderableTrailNew",
        -- Spice
        Body = "MESSENGER",
        Frame = "GALACTIC",
        Observer ="MERCURY BARYCENTER",
        -- Optional rendering properties
        LineColor = { 0.288, 0.375, 0.934 },
        PointColor = { 0.9, 0.2, 0.9 },
        LineFade = 0.0, -- [0,1]
        RenderPart = 0.5, -- [0,1]
        LineWidth = 2,
        ShowTimeStamps = false,
        RenderFullTrail = false,
        -- Time interval
        TimeRange = {
            Start = "2011 MAY 01 12:00:00",
            End = "2011 MAY 30 12:00:00"
        },
        SampleDeltaTime = 1800, -- Seconds between each point
        SubSamples = 3,
    },
}
}
