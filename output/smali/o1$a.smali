.class public Lo1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lo1;


# direct methods
.method public constructor <init>(Lo1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1$a;->e:Lo1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo1$a;->e:Lo1;

    invoke-virtual {v0}, Lo1;->c()V

    return-void
.end method
