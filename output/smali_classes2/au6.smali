.class public final synthetic Lau6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lqu6;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lqu6;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau6;->e:Lqu6;

    iput-wide p2, p0, Lau6;->f:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lau6;->e:Lqu6;

    iget-wide v0, p0, Lau6;->f:J

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p2, Lqu6$g;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2}, Lqu6$g;-><init>(Lqu6;Lqu6$a;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
