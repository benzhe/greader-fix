.class public final synthetic Lxt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxt6;->e:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lxt6;->e:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
