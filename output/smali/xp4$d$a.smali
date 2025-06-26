.class public final Lxp4$d$a;
.super Lpk4$b;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxp4$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4$b<",
        "Lxp4$d;",
        "Lxp4$d$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lxp4$d;->t()Lxp4$d;

    move-result-object v0

    invoke-direct {p0, v0}, Lpk4$b;-><init>(Lpk4;)V

    return-void
.end method

.method public constructor <init>(Lbp4;)V
    .locals 0

    .line 2
    invoke-static {}, Lxp4$d;->t()Lxp4$d;

    move-result-object p1

    invoke-direct {p0, p1}, Lpk4$b;-><init>(Lpk4;)V

    return-void
.end method
