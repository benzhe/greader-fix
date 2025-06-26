.class public final Lnet/frakbot/glowpadbackport/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/frakbot/glowpadbackport/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final GlowPadView:[I

.field public static final GlowPadView_allowScaling:I = 0x0

.field public static final GlowPadView_alwaysTrackFinger:I = 0x1

.field public static final GlowPadView_directionDescriptions:I = 0x2

.field public static final GlowPadView_feedbackCount:I = 0x3

.field public static final GlowPadView_firstItemOffset:I = 0x4

.field public static final GlowPadView_glowRadius:I = 0x5

.field public static final GlowPadView_gravity:I = 0x6

.field public static final GlowPadView_handleBackground:I = 0x7

.field public static final GlowPadView_handleDrawable:I = 0x8

.field public static final GlowPadView_handleForeground:I = 0x9

.field public static final GlowPadView_handleOpacity:I = 0xa

.field public static final GlowPadView_handleSize:I = 0xb

.field public static final GlowPadView_handleStyle:I = 0xc

.field public static final GlowPadView_innerRadius:I = 0xd

.field public static final GlowPadView_magneticTargets:I = 0xe

.field public static final GlowPadView_outerRadius:I = 0xf

.field public static final GlowPadView_outerRingDrawable:I = 0x10

.field public static final GlowPadView_pointDrawable:I = 0x11

.field public static final GlowPadView_snapMargin:I = 0x12

.field public static final GlowPadView_targetBackground:I = 0x13

.field public static final GlowPadView_targetDescriptions:I = 0x14

.field public static final GlowPadView_targetDrawables:I = 0x15

.field public static final GlowPadView_vibrationDuration:I = 0x16

.field public static final LinearLayout:[I

.field public static final LinearLayout_gravity:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0401d9

    aput v2, v0, v1

    sput-object v0, Lnet/frakbot/glowpadbackport/R$styleable;->LinearLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040037
        0x7f04003c
        0x7f04014b
        0x7f0401ab
        0x7f0401ad
        0x7f0401d6
        0x7f0401d9
        0x7f0401e1
        0x7f0401e2
        0x7f0401e3
        0x7f0401e4
        0x7f0401e5
        0x7f0401e6
        0x7f04020f
        0x7f0402a2
        0x7f040316
        0x7f040317
        0x7f040336
        0x7f040398
        0x7f0403e7
        0x7f0403e8
        0x7f0403e9
        0x7f04044e
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
