.class public Lor6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lor6;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lor6;


# direct methods
.method public constructor <init>(Lor6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lor6$b;->e:Lor6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lor6$b;->e:Lor6;

    iget-object v0, v0, Lnr6;->m:Lan6;

    const-string v1, "EVENT_ITEM_LEFT_ACTION"

    invoke-virtual {v0, v1, p1}, Lan6;->b(Ljava/lang/String;Ljava/lang/Object;)I

    return-void
.end method
