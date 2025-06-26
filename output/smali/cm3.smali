.class public final Lcm3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lam3;


# direct methods
.method public constructor <init>(Lam3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcm3;->a:Lam3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcm3;->a:Lam3;

    const/4 p2, 0x3

    .line 2
    invoke-virtual {p1, p2}, Lam3;->d(I)V

    return-void
.end method
