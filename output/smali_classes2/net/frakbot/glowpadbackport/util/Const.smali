.class public Lnet/frakbot/glowpadbackport/util/Const;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IS_ECLAIR:Z

.field public static final IS_FROYO:Z

.field public static final IS_ICS:Z

.field public static final IS_JB:Z

.field public static final IS_JB_MR1:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lnet/frakbot/glowpadbackport/util/Const;->IS_ECLAIR:Z

    .line 2
    sput-boolean v0, Lnet/frakbot/glowpadbackport/util/Const;->IS_FROYO:Z

    .line 3
    sput-boolean v0, Lnet/frakbot/glowpadbackport/util/Const;->IS_ICS:Z

    .line 4
    sput-boolean v0, Lnet/frakbot/glowpadbackport/util/Const;->IS_JB:Z

    .line 5
    sput-boolean v0, Lnet/frakbot/glowpadbackport/util/Const;->IS_JB_MR1:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
