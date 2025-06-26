.class public final Lmq3$a;
.super Ls63$b;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmq3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63$b<",
        "Lmq3;",
        "Lmq3$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrq3;)V
    .locals 0

    .line 1
    invoke-static {}, Lmq3;->x()Lmq3;

    move-result-object p1

    invoke-direct {p0, p1}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method
