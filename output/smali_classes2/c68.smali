.class public final Lc68;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc68$q;,
        Lc68$i;,
        Lc68$r;,
        Lc68$s;,
        Lc68$h;,
        Lc68$k;,
        Lc68$g;,
        Lc68$p;,
        Lc68$f;,
        Lc68$m;,
        Lc68$j;,
        Lc68$o;,
        Lc68$c;,
        Lc68$n;,
        Lc68$l;,
        Lc68$d;,
        Lc68$e;
    }
.end annotation


# static fields
.field public static final h:La78;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La78<",
            "Lz48;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ly68;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lc68;

.field public final b:Lc68;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc68$e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public e:I

.field public f:C

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lc68$a;

    invoke-direct {v0}, Lc68$a;-><init>()V

    sput-object v0, Lc68;->h:La78;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc68;->i:Ljava/util/Map;

    const/16 v1, 0x47

    .line 3
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->J:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x79

    .line 4
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->H:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x75

    .line 5
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->I:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x51

    .line 6
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ls68;->a:Lb78;

    sget-object v2, Ls68$b;->f:Ls68$b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x71

    .line 7
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4d

    .line 8
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->F:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4c

    .line 9
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x44

    .line 10
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->B:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x64

    .line 11
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->A:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x46

    .line 12
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->y:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x45

    .line 13
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->x:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x63

    .line 14
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x65

    .line 15
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x61

    .line 16
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->w:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x48

    .line 17
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->u:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6b

    .line 18
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->v:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4b

    .line 19
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->s:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x68

    .line 20
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->t:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6d

    .line 21
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->q:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x73

    .line 22
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->o:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    .line 23
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->i:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x41

    .line 24
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v3, Lq68;->n:Lq68;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6e

    .line 25
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e

    .line 26
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lq68;->j:Lq68;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lc68;->a:Lc68;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc68;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lc68;->g:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lc68;->b:Lc68;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lc68;->d:Z

    return-void
.end method

.method public constructor <init>(Lc68;Z)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p0, p0, Lc68;->a:Lc68;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc68;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lc68;->g:I

    .line 11
    iput-object p1, p0, Lc68;->b:Lc68;

    .line 12
    iput-boolean p2, p0, Lc68;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lb68;)Lc68;
    .locals 2

    const-string v0, "formatter"

    .line 1
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lb68;->a:Lc68$d;

    .line 3
    iget-boolean v0, p1, Lc68$d;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lc68$d;

    iget-object p1, p1, Lc68$d;->e:[Lc68$e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc68$d;-><init>([Lc68$e;Z)V

    move-object p1, v0

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lc68;->b(Lc68$e;)I

    return-object p0
.end method

.method public final b(Lc68$e;)I
    .locals 4

    const-string v0, "pp"

    .line 1
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lc68;->a:Lc68;

    iget v1, v0, Lc68;->e:I

    if-lez v1, :cond_0

    .line 3
    new-instance v2, Lc68$l;

    iget-char v3, v0, Lc68;->f:C

    invoke-direct {v2, p1, v1, v3}, Lc68$l;-><init>(Lc68$e;IC)V

    const/4 p1, 0x0

    .line 4
    iput p1, v0, Lc68;->e:I

    .line 5
    iput-char p1, v0, Lc68;->f:C

    move-object p1, v2

    .line 6
    :cond_0
    iget-object v0, v0, Lc68;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lc68;->a:Lc68;

    const/4 v0, -0x1

    iput v0, p1, Lc68;->g:I

    .line 8
    iget-object p1, p1, Lc68;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public c(C)Lc68;
    .locals 1

    .line 1
    new-instance v0, Lc68$c;

    invoke-direct {v0, p1}, Lc68$c;-><init>(C)V

    invoke-virtual {p0, v0}, Lc68;->b(Lc68$e;)I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lc68;
    .locals 2

    const-string v0, "literal"

    .line 1
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lc68$c;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lc68$c;-><init>(C)V

    invoke-virtual {p0, v0}, Lc68;->b(Lc68$e;)I

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lc68$o;

    invoke-direct {v0, p1}, Lc68$o;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc68;->b(Lc68$e;)I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public e(Lm68;)Lc68;
    .locals 1

    const-string v0, "style"

    .line 1
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lm68;->e:Lm68;

    if-eq p1, v0, :cond_1

    sget-object v0, Lm68;->g:Lm68;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Style must be either full or short"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Lc68$h;

    invoke-direct {v0, p1}, Lc68$h;-><init>(Lm68;)V

    invoke-virtual {p0, v0}, Lc68;->b(Lc68$e;)I

    return-object p0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lc68;
    .locals 1

    .line 1
    new-instance v0, Lc68$k;

    invoke-direct {v0, p2, p1}, Lc68$k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc68;->b(Lc68$e;)I

    return-object p0
.end method

.method public g(Ly68;Ljava/util/Map;)Lc68;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly68;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lc68;"
        }
    .end annotation

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "textLookup"

    .line 2
    invoke-static {p2, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 4
    sget-object p2, Lm68;->e:Lm68;

    invoke-static {p2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 5
    new-instance v1, Ll68$b;

    invoke-direct {v1, v0}, Ll68$b;-><init>(Ljava/util/Map;)V

    .line 6
    new-instance v0, Lc68$b;

    invoke-direct {v0, p0, v1}, Lc68$b;-><init>(Lc68;Ll68$b;)V

    .line 7
    new-instance v1, Lc68$p;

    invoke-direct {v1, p1, p2, v0}, Lc68$p;-><init>(Ly68;Lm68;Lf68;)V

    invoke-virtual {p0, v1}, Lc68;->b(Lc68$e;)I

    return-object p0
.end method

.method public h(Ly68;Lm68;)Lc68;
    .locals 2

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "textStyle"

    .line 2
    invoke-static {p2, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lc68$p;

    .line 4
    sget-object v1, Lf68;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lf68$a;->a:Lf68;

    .line 5
    invoke-direct {v0, p1, p2, v1}, Lc68$p;-><init>(Ly68;Lm68;Lf68;)V

    invoke-virtual {p0, v0}, Lc68;->b(Lc68$e;)I

    return-object p0
.end method

.method public final i(Lc68$j;)Lc68;
    .locals 5

    .line 1
    iget-object v0, p0, Lc68;->a:Lc68;

    iget v1, v0, Lc68;->g:I

    if-ltz v1, :cond_1

    iget-object v0, v0, Lc68;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lc68$j;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lc68;->a:Lc68;

    iget v1, v0, Lc68;->g:I

    .line 4
    iget-object v0, v0, Lc68;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc68$j;

    .line 5
    iget v2, p1, Lc68$j;->f:I

    iget v3, p1, Lc68$j;->g:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lc68$j;->h:Lj68;

    sget-object v4, Lj68;->h:Lj68;

    if-ne v2, v4, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Lc68$j;->c(I)Lc68$j;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lc68$j;->b()Lc68$j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc68;->b(Lc68$e;)I

    .line 8
    iget-object p1, p0, Lc68;->a:Lc68;

    iput v1, p1, Lc68;->g:I

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lc68$j;->b()Lc68$j;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lc68;->a:Lc68;

    invoke-virtual {p0, p1}, Lc68;->b(Lc68$e;)I

    move-result p1

    iput p1, v2, Lc68;->g:I

    .line 11
    :goto_0
    iget-object p1, p0, Lc68;->a:Lc68;

    iget-object p1, p1, Lc68;->c:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lc68;->a:Lc68;

    invoke-virtual {p0, p1}, Lc68;->b(Lc68$e;)I

    move-result p1

    iput p1, v0, Lc68;->g:I

    :goto_1
    return-object p0
.end method

.method public j(Ly68;)Lc68;
    .locals 4

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lc68$j;

    sget-object v1, Lj68;->e:Lj68;

    const/4 v2, 0x1

    const/16 v3, 0x13

    invoke-direct {v0, p1, v2, v3, v1}, Lc68$j;-><init>(Ly68;IILj68;)V

    invoke-virtual {p0, v0}, Lc68;->i(Lc68$j;)Lc68;

    return-object p0
.end method

.method public k(Ly68;I)Lc68;
    .locals 2

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x13

    if-gt p2, v0, :cond_0

    .line 2
    new-instance v0, Lc68$j;

    sget-object v1, Lj68;->h:Lj68;

    invoke-direct {v0, p1, p2, p2, v1}, Lc68$j;-><init>(Ly68;IILj68;)V

    .line 3
    invoke-virtual {p0, v0}, Lc68;->i(Lc68$j;)Lc68;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The width must be from 1 to 19 inclusive but was "

    invoke-static {v0, p2}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Ly68;IILj68;)Lc68;
    .locals 2

    if-ne p2, p3, :cond_0

    .line 1
    sget-object v0, Lj68;->h:Lj68;

    if-ne p4, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Lc68;->k(Ly68;I)Lc68;

    return-object p0

    :cond_0
    const-string v0, "field"

    .line 3
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "signStyle"

    .line 4
    invoke-static {p4, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v1, 0x13

    if-gt p2, v1, :cond_3

    if-lt p3, v0, :cond_2

    if-gt p3, v1, :cond_2

    if-lt p3, p2, :cond_1

    .line 5
    new-instance v0, Lc68$j;

    invoke-direct {v0, p1, p2, p3, p4}, Lc68$j;-><init>(Ly68;IILj68;)V

    .line 6
    invoke-virtual {p0, v0}, Lc68;->i(Lc68$j;)Lc68;

    return-object p0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p4, "The maximum width must exceed or equal the minimum width but "

    const-string v0, " < "

    invoke-static {p4, p3, v0, p2}, Ljo;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-static {p2, p3}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-static {p3, p2}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()Lc68;
    .locals 3

    .line 1
    iget-object v0, p0, Lc68;->a:Lc68;

    iget-object v1, v0, Lc68;->b:Lc68;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lc68;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Lc68$d;

    iget-object v1, p0, Lc68;->a:Lc68;

    iget-object v2, v1, Lc68;->c:Ljava/util/List;

    iget-boolean v1, v1, Lc68;->d:Z

    invoke-direct {v0, v2, v1}, Lc68$d;-><init>(Ljava/util/List;Z)V

    .line 4
    iget-object v1, p0, Lc68;->a:Lc68;

    iget-object v1, v1, Lc68;->b:Lc68;

    iput-object v1, p0, Lc68;->a:Lc68;

    .line 5
    invoke-virtual {p0, v0}, Lc68;->b(Lc68$e;)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lc68;->a:Lc68;

    iget-object v0, v0, Lc68;->b:Lc68;

    iput-object v0, p0, Lc68;->a:Lc68;

    :goto_0
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Lc68;
    .locals 3

    .line 1
    iget-object v0, p0, Lc68;->a:Lc68;

    const/4 v1, -0x1

    iput v1, v0, Lc68;->g:I

    .line 2
    new-instance v1, Lc68;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lc68;-><init>(Lc68;Z)V

    iput-object v1, p0, Lc68;->a:Lc68;

    return-object p0
.end method

.method public o()Lb68;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc68;->p(Ljava/util/Locale;)Lb68;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/util/Locale;)Lb68;
    .locals 9

    const-string v0, "locale"

    .line 1
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :goto_0
    iget-object v0, p0, Lc68;->a:Lc68;

    iget-object v0, v0, Lc68;->b:Lc68;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lc68;->m()Lc68;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Lc68$d;

    iget-object v0, p0, Lc68;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lc68$d;-><init>(Ljava/util/List;Z)V

    .line 5
    new-instance v0, Lb68;

    sget-object v4, Lg68;->e:Lg68;

    sget-object v5, Li68;->f:Li68;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lb68;-><init>(Lc68$d;Ljava/util/Locale;Lg68;Li68;Ljava/util/Set;Lj58;Lz48;)V

    return-object v0
.end method

.method public q(Li68;)Lb68;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lc68;->o()Lb68;

    move-result-object v0

    const-string v1, "resolverStyle"

    .line 2
    invoke-static {p1, v1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lb68;->d:Li68;

    invoke-static {v1, p1}, Lkt7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lb68;

    iget-object v3, v0, Lb68;->a:Lc68$d;

    iget-object v4, v0, Lb68;->b:Ljava/util/Locale;

    iget-object v5, v0, Lb68;->c:Lg68;

    iget-object v7, v0, Lb68;->e:Ljava/util/Set;

    iget-object v8, v0, Lb68;->f:Lj58;

    iget-object v9, v0, Lb68;->g:Lz48;

    move-object v2, v1

    move-object v6, p1

    invoke-direct/range {v2 .. v9}, Lb68;-><init>(Lc68$d;Ljava/util/Locale;Lg68;Li68;Ljava/util/Set;Lj58;Lz48;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method
