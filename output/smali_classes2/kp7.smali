.class public final Lkp7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcp7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lap7;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Ler7;->m:Ler7;

    goto :goto_0

    :cond_0
    sget-object v0, Lso7;->h:Lso7;

    .line 2
    :goto_0
    sput-object v0, Lkp7;->a:Lcp7;

    .line 3
    sget-object v0, Ljq7;->g:Ljq7;

    .line 4
    sget-object v0, Ler7;->m:Ler7;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Ler7;->l:Lcp7;

    return-void
.end method
