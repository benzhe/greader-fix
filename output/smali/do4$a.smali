.class public final Ldo4$a;
.super Lpk4$b;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldo4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4$b<",
        "Ldo4;",
        "Ldo4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lwn4;)V
    .locals 0

    .line 1
    invoke-static {}, Ldo4;->p()Ldo4;

    move-result-object p1

    invoke-direct {p0, p1}, Lpk4$b;-><init>(Lpk4;)V

    return-void
.end method
