.class public final Lao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/Exception;

.field public final synthetic f:Lco;


# direct methods
.method public constructor <init>(Lco;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lao;->f:Lco;

    iput-object p2, p0, Lao;->e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lao;->e:Ljava/lang/Exception;

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x20

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error acknowledge purchase; ex: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lao;->f:Lco;

    iget-object v0, v0, Lco;->f:Ldn;

    .line 2
    sget-object v1, Lun;->l:Lin;

    invoke-interface {v0, v1}, Ldn;->a(Lin;)V

    return-void
.end method
