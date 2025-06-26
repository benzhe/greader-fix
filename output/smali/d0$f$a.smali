.class public Ld0$f$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0$f;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld0$f;


# direct methods
.method public constructor <init>(Ld0$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld0$f$a;->a:Ld0$f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ld0$f$a;->a:Ld0$f;

    invoke-virtual {p1}, Ld0$f;->d()V

    return-void
.end method
