.class public final Lfc3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ldc3;


# direct methods
.method public constructor <init>(Ldc3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfc3;->a:Ldc3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lfc3;->a:Ldc3;

    .line 2
    invoke-virtual {p1}, Ldc3;->d()V

    return-void
.end method
