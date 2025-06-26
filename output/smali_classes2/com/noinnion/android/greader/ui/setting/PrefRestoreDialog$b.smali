.class public Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La0;

.field public final synthetic b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;La0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;->b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    iput-object p2, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;->a:La0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;->b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;->a:La0;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, La0;->f(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->e:Landroid/widget/Button;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;->b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->e:Landroid/widget/Button;

    new-instance v0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b$a;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b$a;-><init>(Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;->b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->e:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;->b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;-><init>(Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$a;)V

    new-array p1, v0, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
