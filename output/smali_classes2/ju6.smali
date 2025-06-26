.class public Lju6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lju6;->e:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    check-cast p1, La0;

    const p2, 0x1020009

    invoke-virtual {p1, p2}, Li0;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p2, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;

    iget-object v0, p0, Lju6;->e:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$a;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
