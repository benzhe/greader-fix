.class public final synthetic Llw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmw5;


# direct methods
.method public constructor <init>(Lmw5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llw5;->e:Lmw5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Llw5;->e:Lmw5;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lmw5;->c:Lex5$b;

    .line 2
    iget-object v1, v0, Lmw5;->a:Lwq5;

    sget-object v2, Lwq5;->e:Lwq5;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v2, v3, [Ljava/lang/Object;

    const-string v5, "Timer should be canceled if we transitioned to a different state."

    invoke-static {v1, v5, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    const/16 v4, 0xa

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Backend didn\'t respond within %d seconds\n"

    .line 5
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lmw5;->a(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lwq5;->g:Lwq5;

    invoke-virtual {v0, v1}, Lmw5;->b(Lwq5;)V

    return-void
.end method
