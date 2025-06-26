.class public Ld77$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld77;->a()La67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ld77;


# direct methods
.method public constructor <init>(Ld77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld77$b;->e:Ld77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld77$b;->e:Ld77;

    .line 2
    iget-object v0, v0, Ld77;->u:Lj37;

    .line 3
    iget-object v0, v0, Lj37;->a:Li37;

    .line 4
    sget-object v1, Li37;->h:Li37;

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Ld77$b;->e:Ld77;

    .line 6
    iget-object v0, v0, Ld77;->j:Lz27;

    .line 7
    sget-object v1, Lz27$a;->f:Lz27$a;

    const-string v2, "CONNECTING as requested"

    invoke-virtual {v0, v1, v2}, Lz27;->a(Lz27$a;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Ld77$b;->e:Ld77;

    sget-object v1, Li37;->e:Li37;

    invoke-static {v0, v1}, Ld77;->h(Ld77;Li37;)V

    .line 9
    iget-object v0, p0, Ld77$b;->e:Ld77;

    invoke-static {v0}, Ld77;->i(Ld77;)V

    :cond_0
    return-void
.end method
