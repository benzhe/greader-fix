.class public Lnet/frakbot/glowpadbackport/Ease$Linear;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/frakbot/glowpadbackport/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Linear"
.end annotation


# static fields
.field public static final easeNone:Lnet/frakbot/glowpadbackport/util/TimeInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/frakbot/glowpadbackport/Ease$Linear$1;

    invoke-direct {v0}, Lnet/frakbot/glowpadbackport/Ease$Linear$1;-><init>()V

    sput-object v0, Lnet/frakbot/glowpadbackport/Ease$Linear;->easeNone:Lnet/frakbot/glowpadbackport/util/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
