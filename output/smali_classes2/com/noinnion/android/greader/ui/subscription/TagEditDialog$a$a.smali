.class public Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a$a;->e:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a$a;->e:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a;->b:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    .line 2
    sget v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->i:I

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->f:Llp6;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lrb;->dismissAllowingStateLoss()V

    :goto_1
    return-void
.end method
