.class public final Ldq4$a;
.super Lpk4$b;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldq4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4$b<",
        "Ldq4;",
        "Ldq4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lbp4;)V
    .locals 0

    .line 1
    invoke-static {}, Ldq4;->p()Ldq4;

    move-result-object p1

    invoke-direct {p0, p1}, Lpk4$b;-><init>(Lpk4;)V

    return-void
.end method
