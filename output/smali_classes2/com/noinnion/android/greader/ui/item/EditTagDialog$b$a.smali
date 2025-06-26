.class public Lcom/noinnion/android/greader/ui/item/EditTagDialog$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b$a;->e:Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b$a;->e:Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;->b:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    .line 2
    sget v0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->l:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;-><init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog;Lcom/noinnion/android/greader/ui/item/EditTagDialog$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
