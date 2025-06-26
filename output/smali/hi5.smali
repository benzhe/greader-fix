.class public Lhi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lii5$g;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Lii5;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-boolean p4, p0, Lhi5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrl5;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iget-boolean v2, p0, Lhi5;->a:Z

    .line 2
    sget-object v3, Lsl5;->a:Lpl5;

    .line 3
    invoke-static {v0}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v0

    .line 4
    invoke-static {v1}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v1

    const/16 v3, 0x8

    const/4 v4, 0x2

    .line 5
    invoke-virtual {p1, v3, v4}, Lrl5;->r(II)V

    const/4 v3, 0x1

    const/4 v5, 0x3

    .line 6
    invoke-static {v3, v5}, Lrl5;->c(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    .line 7
    invoke-static {v4, v0}, Lrl5;->b(ILpl5;)I

    move-result v7

    add-int/2addr v7, v6

    .line 8
    invoke-static {v5, v1}, Lrl5;->b(ILpl5;)I

    move-result v6

    add-int/2addr v6, v7

    const/4 v7, 0x4

    .line 9
    invoke-static {v7, v2}, Lrl5;->a(IZ)I

    move-result v8

    add-int/2addr v8, v6

    .line 10
    invoke-virtual {p1, v8}, Lrl5;->p(I)V

    .line 11
    invoke-virtual {p1, v3, v5}, Lrl5;->n(II)V

    .line 12
    invoke-virtual {p1, v4, v0}, Lrl5;->m(ILpl5;)V

    .line 13
    invoke-virtual {p1, v5, v1}, Lrl5;->m(ILpl5;)V

    .line 14
    invoke-virtual {p1, v7, v2}, Lrl5;->l(IZ)V

    return-void
.end method
