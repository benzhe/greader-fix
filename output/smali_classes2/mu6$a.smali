.class public Lmu6$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmu6;


# direct methods
.method public constructor <init>(Lmu6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmu6$a;->a:Lmu6;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmu6$a;->a:Lmu6;

    invoke-virtual {p1}, Lmu6;->j()V

    return-void
.end method
