.class public final Lc68$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc68$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation


# instance fields
.field public final e:Ly68;

.field public final f:Lm68;

.field public final g:Lf68;

.field public volatile h:Lc68$j;


# direct methods
.method public constructor <init>(Ly68;Lm68;Lf68;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc68$p;->e:Ly68;

    .line 3
    iput-object p2, p0, Lc68$p;->f:Lm68;

    .line 4
    iput-object p3, p0, Lc68$p;->g:Lf68;

    return-void
.end method


# virtual methods
.method public i(Le68;Ljava/lang/StringBuilder;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lc68$p;->e:Ly68;

    invoke-virtual {p1, v0}, Le68;->b(Ly68;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Lc68$p;->g:Lf68;

    iget-object v2, p0, Lc68$p;->e:Ly68;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lc68$p;->f:Lm68;

    .line 3
    iget-object v6, p1, Le68;->b:Ljava/util/Locale;

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    .line 4
    invoke-virtual/range {v0 .. v5}, Lf68;->a(Ly68;JLm68;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lc68$p;->h:Lc68$j;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lc68$j;

    iget-object v2, p0, Lc68$p;->e:Ly68;

    const/16 v3, 0x13

    sget-object v4, Lj68;->e:Lj68;

    invoke-direct {v0, v2, v1, v3, v4}, Lc68$j;-><init>(Ly68;IILj68;)V

    iput-object v0, p0, Lc68$p;->h:Lc68$j;

    .line 7
    :cond_1
    iget-object v0, p0, Lc68$p;->h:Lc68$j;

    .line 8
    invoke-virtual {v0, p1, p2}, Lc68$j;->i(Le68;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1

    .line 9
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lc68$p;->f:Lm68;

    sget-object v1, Lm68;->e:Lm68;

    const-string v2, ")"

    const-string v3, "Text("

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc68$p;->e:Ly68;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc68$p;->e:Ly68;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc68$p;->f:Lm68;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
