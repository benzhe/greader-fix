.class public Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b$a;->e:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b$a;->e:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;->b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    .line 2
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;-><init>(Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->f:Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
