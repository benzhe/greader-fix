.class public final synthetic Lup6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/home/WelcomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lup6;->e:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lup6;->e:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Ljw6;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
