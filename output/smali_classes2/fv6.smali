.class public final synthetic Lfv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Ljv6$d;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Ljv6$d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfv6;->e:Ljv6$d;

    iput p2, p0, Lfv6;->f:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lfv6;->e:Ljv6$d;

    iget v0, p0, Lfv6;->f:I

    .line 1
    iget-object v1, p1, Ljv6$d;->e:Ljv6;

    .line 2
    iget-object v1, v1, Ljv6;->g:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v1, p1, Ljv6$d;->e:Ljv6;

    .line 5
    iget-object v1, v1, Ljv6;->e:Ljv6$e;

    .line 6
    invoke-interface {v1, v0}, Ljv6$e;->remove(I)V

    .line 7
    iget-object p1, p1, Ljv6$d;->e:Ljv6;

    .line 8
    iget-object p1, p1, Ljv6;->f:Ljv6$d;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
