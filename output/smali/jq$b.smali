.class public final Ljq$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljq;->a(Lnb7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Len;


# direct methods
.method public constructor <init>(Len;)V
    .locals 0

    iput-object p1, p0, Ljq$b;->a:Len;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "endConnection"

    .line 1
    invoke-static {v1, v0}, Lc88;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Ljq$b;->a:Len;

    invoke-virtual {v0}, Len;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ljq$b;->a:Len;

    invoke-virtual {v0}, Len;->b()V

    :cond_0
    return-void
.end method
