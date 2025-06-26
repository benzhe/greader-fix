.class public Lgt5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgt5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgt5;


# direct methods
.method public constructor <init>(Lgt5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgt5$a;->a:Lgt5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgt5$a;->a:Lgt5;

    .line 2
    iget-object v0, v0, Lgt5;->g:Lct5;

    .line 3
    invoke-virtual {v0}, Lct5;->c()V

    return-void
.end method

.method public onCommit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgt5$a;->a:Lgt5;

    .line 2
    iget-object v0, v0, Lgt5;->g:Lct5;

    .line 3
    invoke-virtual {v0}, Lct5;->b()V

    return-void
.end method

.method public onRollback()V
    .locals 0

    return-void
.end method
