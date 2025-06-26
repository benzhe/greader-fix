.class public Lqy6$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqy6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lqy6;


# direct methods
.method public constructor <init>(Lqy6;Lqy6$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqy6$b;->a:Lqy6;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lqy6$b;->a:Lqy6;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lqy6$b;->a:Lqy6;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 6
    iput-object p1, v1, Lqy6;->w:Ljava/util/List;

    .line 7
    iget-object p1, p0, Lqy6$b;->a:Lqy6;

    .line 8
    iget-object p1, p1, Lqy6;->w:Ljava/util/List;

    .line 9
    new-instance v1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v1, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lqy6$b;->a:Lqy6;

    new-instance v0, Lqy6$c;

    iget-object v1, p0, Lqy6$b;->a:Lqy6;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/noinnion/android/R$layout;->dialog_intent_chooser_row:I

    iget-object v4, p0, Lqy6$b;->a:Lqy6;

    .line 3
    iget-object v4, v4, Lqy6;->w:Ljava/util/List;

    .line 4
    invoke-direct {v0, v1, v2, v3, v4}, Lqy6$c;-><init>(Lqy6;Landroid/content/Context;ILjava/util/List;)V

    .line 5
    iput-object v0, p1, Lqy6;->v:Lqy6$c;

    .line 6
    iget-object p1, p0, Lqy6$b;->a:Lqy6;

    .line 7
    iget-object v0, p1, Lqy6;->u:Landroid/widget/GridView;

    .line 8
    iget-object p1, p1, Lqy6;->v:Lqy6$c;

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
