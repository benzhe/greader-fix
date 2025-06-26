.class public Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a$a;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a$a;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a;->b:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    .line 2
    sget v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->f:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;-><init>(Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 5
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
