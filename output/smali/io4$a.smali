.class public final Lio4$a;
.super Lpk4$d;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4$d<",
        "Lio4;",
        "Lio4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lwn4;)V
    .locals 0

    .line 1
    invoke-static {}, Lio4;->p()Lio4;

    move-result-object p1

    invoke-direct {p0, p1}, Lpk4$d;-><init>(Lpk4$c;)V

    return-void
.end method
