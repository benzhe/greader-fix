.class public Lrb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lrb;


# direct methods
.method public constructor <init>(Lrb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrb$a;->e:Lrb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrb$a;->e:Lrb;

    iget-object v1, v0, Lrb;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lrb;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
