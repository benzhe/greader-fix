.class public Lfi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lii5$g;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J


# direct methods
.method public constructor <init>(Lii5;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p2, p0, Lfi5;->a:Ljava/lang/String;

    iput-object p3, p0, Lfi5;->b:Ljava/lang/String;

    iput-wide p4, p0, Lfi5;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrl5;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfi5;->a:Ljava/lang/String;

    iget-object v1, p0, Lfi5;->b:Ljava/lang/String;

    iget-wide v2, p0, Lfi5;->c:J

    .line 2
    sget-object v4, Lsl5;->a:Lpl5;

    .line 3
    invoke-static {v1}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lrl5;->m(ILpl5;)V

    .line 4
    invoke-static {v0}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lrl5;->m(ILpl5;)V

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p1, v0, v2, v3}, Lrl5;->t(IJ)V

    return-void
.end method
