.class public Lz68$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La78;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La78<",
        "Lp48;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu68;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lq68;->C:Lq68;

    invoke-interface {p1, v0}, Lu68;->y(Ly68;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lu68;->D(Ly68;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lp48;->e0(J)Lp48;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
