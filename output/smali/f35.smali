.class public final Lf35;
.super Lny$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lny$a<",
        "Lor4;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lny$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lj00;Ljava/lang/Object;Lqy$a;Lqy$b;)Lny$f;
    .locals 6

    new-instance p4, Lor4;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lor4;-><init>(Landroid/content/Context;Landroid/os/Looper;Lj00;Lqy$a;Lqy$b;)V

    return-object p4
.end method
