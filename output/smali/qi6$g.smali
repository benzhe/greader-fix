.class public abstract Lqi6$g;
.super Lqi6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqi6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqi6;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract M(Lqi6;II)Z
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lqi6$a;

    invoke-direct {v0, p0}, Lqi6$a;-><init>(Lqi6;)V

    return-object v0
.end method

.method public final s()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
