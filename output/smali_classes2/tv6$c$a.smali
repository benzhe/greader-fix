.class public Ltv6$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv6$c;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ltv6$c;


# direct methods
.method public constructor <init>(Ltv6$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv6$c$a;->e:Ltv6$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Ltv6$c$a;->e:Ltv6$c;

    iget-object v0, v0, Ltv6$c;->e:Ltv6;

    .line 3
    iget-object v0, v0, Ltv6;->f:Landroid/widget/ExpandableListView;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Ltv6$c$a;->e:Ltv6$c;

    iget-object v0, v0, Ltv6$c;->e:Ltv6;

    .line 6
    iget-object v0, v0, Ltv6;->f:Landroid/widget/ExpandableListView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Ltv6$c$a;->e:Ltv6$c;

    iget-object v0, v0, Ltv6$c;->e:Ltv6;

    .line 9
    iget-object v0, v0, Ltv6;->f:Landroid/widget/ExpandableListView;

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :goto_0
    return-void
.end method
