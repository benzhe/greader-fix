.class public Ldx6$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldx6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldx6;


# direct methods
.method public constructor <init>(Ldx6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldx6$a;->a:Ldx6;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Ldx6$a;->a:Ldx6;

    .line 3
    invoke-virtual {p1}, Ldx6;->e()V

    :goto_0
    return-void
.end method
