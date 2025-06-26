.class public Lho5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lun5;


# instance fields
.field public final synthetic a:Lio5;


# direct methods
.method public constructor <init>(Lio5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lho5;->a:Lio5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Ljo5;

    iget-object v0, p0, Lho5;->a:Lio5;

    .line 2
    iget-object v2, v0, Lio5;->a:Ljava/util/Map;

    .line 3
    iget-object v3, v0, Lio5;->b:Ljava/util/Map;

    .line 4
    iget-object v4, v0, Lio5;->c:Lyn5;

    .line 5
    iget-boolean v5, v0, Lio5;->d:Z

    move-object v0, v6

    move-object v1, p2

    .line 6
    invoke-direct/range {v0 .. v5}, Ljo5;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lyn5;Z)V

    const/4 p2, 0x0

    .line 7
    invoke-virtual {v6, p1, p2}, Ljo5;->i(Ljava/lang/Object;Z)Ljo5;

    .line 8
    invoke-virtual {v6}, Ljo5;->k()V

    .line 9
    iget-object p1, v6, Ljo5;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method
