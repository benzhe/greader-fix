.class public Lqu6$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqu6;


# direct methods
.method public constructor <init>(Lqu6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqu6$a;->a:Lqu6;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lqu6$a;->a:Lqu6;

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Lqu6;->i(Z)V

    return-void
.end method
