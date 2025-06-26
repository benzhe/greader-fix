.class public final Lhz3;
.super Lpy;
.source "SourceFile"

# interfaces
.implements Lay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpy<",
        "Ljava/lang/Object;",
        ">;",
        "Lay;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lyx;->o:Lny;

    new-instance v1, Lwy;

    invoke-direct {v1}, Lwy;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lpy;-><init>(Landroid/content/Context;Lny;Lny$d;Lwy;)V

    return-void
.end method
