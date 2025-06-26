.class public final synthetic Lc12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lz02;

.field public final f:Lhl2;

.field public final g:Lsk2;


# direct methods
.method public constructor <init>(Lz02;Lhl2;Lsk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc12;->e:Lz02;

    iput-object p2, p0, Lc12;->f:Lhl2;

    iput-object p3, p0, Lc12;->g:Lsk2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lc12;->e:Lz02;

    iget-object v1, p0, Lc12;->f:Lhl2;

    iget-object v2, p0, Lc12;->g:Lsk2;

    .line 1
    iget-object v3, v0, Lz02;->a:Lg51;

    new-instance v4, Lv61;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance v5, Lt51;

    iget-object v6, v1, Lhl2;->a:Lcl2;

    iget-object v6, v6, Lcl2;->a:Lll2;

    .line 2
    invoke-virtual {v6}, Lll2;->a()Lp90;

    move-result-object v6

    new-instance v7, Lb12;

    invoke-direct {v7, v0, v1, v2}, Lb12;-><init>(Lz02;Lhl2;Lsk2;)V

    invoke-direct {v5, v6, v7}, Lt51;-><init>(Lp90;Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v3, v4, v5}, Lg51;->a(Lv61;Lt51;)Lh01;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lh01;->m:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp51;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
