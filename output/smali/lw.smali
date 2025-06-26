.class public final Llw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lmw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llw;->a:Ljava/lang/String;

    iput-object p2, p0, Llw;->b:Lmw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Luh0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llw;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to load URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Llw;->b:Lmw;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void
.end method
