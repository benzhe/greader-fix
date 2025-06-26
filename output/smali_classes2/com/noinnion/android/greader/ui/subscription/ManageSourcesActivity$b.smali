.class public Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->C(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$b;->f:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    new-instance p1, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$c;

    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$b;->f:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$a;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$b;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
