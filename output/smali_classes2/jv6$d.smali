.class public Ljv6$d;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljv6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljv6;


# direct methods
.method public constructor <init>(Ljv6;Landroid/content/Context;Ljv6$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljv6$d;->e:Ljv6;

    .line 2
    iget-object p1, p1, Ljv6;->g:Ljava/util/List;

    const p3, 0x7f0c010d

    .line 3
    invoke-direct {p0, p2, p3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0c010d

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    :cond_0
    iget-object p3, p0, Ljv6$d;->e:Ljv6;

    .line 4
    iget-object p3, p3, Ljv6;->g:Ljava/util/List;

    .line 5
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v2, 0x1

    invoke-static {p3, v0, v1, v2}, Lap6;->l(Landroid/content/Context;JZ)Lap6;

    move-result-object p3

    if-eqz p3, :cond_2

    const v2, 0x7f09031c

    .line 7
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object p3, p3, Lap6;->h:Ljava/lang/String;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090143

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 9
    iget-object v2, p0, Ljv6$d;->e:Ljv6;

    .line 10
    iget-wide v2, v2, Ljv6;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const v2, 0x7f080125

    .line 11
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v2, 0x7f080126

    .line 12
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const p3, 0x7f0900d5

    .line 13
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v2, Lfv6;

    invoke-direct {v2, p0, p1}, Lfv6;-><init>(Ljv6$d;I)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    return-object p2
.end method
