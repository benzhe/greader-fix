.class public Lf61;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhl2;

.field public final b:Lsk2;

.field public final c:Lxa1;

.field public final d:Lnb1;

.field public final e:Lmi2;

.field public final f:Lt91;

.field public final g:Lrc1;


# direct methods
.method public constructor <init>(Li61;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Li61;->a:Lhl2;

    .line 3
    iput-object v0, p0, Lf61;->a:Lhl2;

    .line 4
    iget-object v0, p1, Li61;->b:Lsk2;

    .line 5
    iput-object v0, p0, Lf61;->b:Lsk2;

    .line 6
    iget-object v0, p1, Li61;->c:Lxa1;

    .line 7
    iput-object v0, p0, Lf61;->c:Lxa1;

    .line 8
    iget-object v0, p1, Li61;->d:Lnb1;

    .line 9
    iput-object v0, p0, Lf61;->d:Lnb1;

    .line 10
    iget-object v0, p1, Li61;->e:Lmi2;

    .line 11
    iput-object v0, p0, Lf61;->e:Lmi2;

    .line 12
    iget-object v0, p1, Li61;->f:Lt91;

    .line 13
    iput-object v0, p0, Lf61;->f:Lt91;

    .line 14
    iget-object p1, p1, Li61;->g:Lrc1;

    .line 15
    iput-object p1, p0, Lf61;->g:Lrc1;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf61;->c:Lxa1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxa1;->I0(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf61;->d:Lnb1;

    .line 2
    sget-object v1, Lmb1;->a:Lzd1;

    invoke-virtual {v0, v1}, Lxd1;->D0(Lzd1;)V

    return-void
.end method
