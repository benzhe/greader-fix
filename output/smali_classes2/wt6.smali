.class public final synthetic Lwt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

.field public final synthetic b:La0;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;La0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwt6;->a:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iput-object p2, p0, Lwt6;->b:La0;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lwt6;->a:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v0, p0, Lwt6;->b:La0;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, La0;->f(I)Landroid/widget/Button;

    move-result-object v0

    .line 3
    new-instance v1, Lxt6;

    invoke-direct {v1, p1}, Lxt6;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
