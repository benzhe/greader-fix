.class public Lqy6;
.super Lo65;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqy6$c;,
        Lqy6$b;,
        Lqy6$d;
    }
.end annotation


# instance fields
.field public final q:Lqy6$d;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public t:Landroid/widget/CheckBox;

.field public u:Landroid/widget/GridView;

.field public v:Lqy6$c;

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lqy6$d;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lo65;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqy6;->w:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lqy6;->r:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lqy6;->s:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lqy6;->q:Lqy6$d;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lo65;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/noinnion/android/R$string;->txt_send_to:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Li0;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    sget p1, Lcom/noinnion/android/R$layout;->dialog_intent_chooser:I

    invoke-virtual {p0, p1}, Lo65;->setContentView(I)V

    .line 4
    sget p1, Lcom/noinnion/android/R$id;->default_check:I

    invoke-virtual {p0, p1}, Li0;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lqy6;->t:Landroid/widget/CheckBox;

    const p1, 0x102000a

    .line 5
    invoke-virtual {p0, p1}, Li0;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lqy6;->u:Landroid/widget/GridView;

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x1020004

    .line 7
    invoke-virtual {p0, p1}, Li0;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lqy6;->u:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 9
    new-instance p1, Lqy6$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lqy6$b;-><init>(Lqy6;Lqy6$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lqy6;->w:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.SEND"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "text/plain"

    .line 4
    invoke-virtual {p3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p4, p0, Lqy6;->r:Ljava/lang/String;

    const-string p5, "android.intent.extra.SUBJECT"

    invoke-virtual {p3, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p4, p0, Lqy6;->s:Ljava/lang/String;

    const-string p5, "android.intent.extra.TEXT"

    invoke-virtual {p3, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    sget p5, Lcom/noinnion/android/R$string;->txt_send_to:I

    invoke-virtual {p4, p5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lqy6;->q:Lqy6$d;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lqy6;->t:Landroid/widget/CheckBox;

    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p4

    check-cast p1, Lhn6;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "item_share_default"

    if-eqz p4, :cond_0

    .line 11
    invoke-static {p3, p1, p2}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 12
    invoke-static {p3, p1, p2}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p0}, Li0;->dismiss()V

    return-void
.end method
