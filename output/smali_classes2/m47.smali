.class public Lm47;
.super Ll47$g;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ll47$d;


# direct methods
.method public constructor <init>(Ll47$c;Ll47$d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lm47;->a:Ll47$d;

    invoke-direct {p0}, Ll47$g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ll47$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ll47$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm47;->a:Ll47$d;

    check-cast v0, Ll47$c$a;

    .line 2
    iget-object v0, v0, Ll47$c$a;->a:Ll47$a;

    .line 3
    iget-object v0, v0, Ll47$a;->d:Ll47$g;

    .line 4
    invoke-virtual {v0, p1}, Ll47$g;->a(Ljava/util/Map;)Ll47$b;

    move-result-object p1

    return-object p1
.end method
