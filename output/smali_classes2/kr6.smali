.class public final synthetic Lkr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Llr6;


# direct methods
.method public synthetic constructor <init>(Llr6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkr6;->e:Llr6;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lkr6;->e:Llr6;

    .line 1
    iget-object v0, v0, Lnr6;->m:Lan6;

    const-string v1, "EVENT_ITEM_LEFT_ACTION"

    invoke-virtual {v0, v1, p1}, Lan6;->b(Ljava/lang/String;Ljava/lang/Object;)I

    return-void
.end method
