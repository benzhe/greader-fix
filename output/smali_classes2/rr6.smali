.class public Lrr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrr6;->e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    const/4 p1, 0x0

    const/16 p2, 0x8

    const p4, 0x7f0902a4

    const/4 p5, 0x4

    if-ne p3, p5, :cond_0

    .line 1
    iget-object p3, p0, Lrr6;->e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;

    invoke-virtual {p3, p4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lrr6;->e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;

    .line 3
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->z:Landroid/widget/ExpandableListView;

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p3, p0, Lrr6;->e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;

    invoke-virtual {p3, p4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p2, p0, Lrr6;->e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;

    .line 7
    iget-object p2, p2, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->z:Landroid/widget/ExpandableListView;

    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
