.class public Ljs7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/regex/Pattern;

.field public final b:Ljava/util/regex/Pattern;

.field public final c:Ljava/util/regex/Pattern;

.field public final d:Ljava/util/regex/Pattern;

.field public final e:Ljava/util/regex/Pattern;

.field public final f:Ljava/util/regex/Pattern;

.field public final g:Ljava/util/regex/Pattern;

.field public final h:Ljava/util/regex/Pattern;

.field public final i:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "unlikelyCandidatesPattern"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okMaybeItsACandidatePattern"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positivePattern"

    invoke-static {p3, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "negativePattern"

    invoke-static {p4, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraneousPattern"

    invoke-static {p5, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bylinePattern"

    invoke-static {p6, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replaceFontsPattern"

    invoke-static {p7, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "normalizePattern"

    invoke-static {p8, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videosPattern"

    invoke-static {p9, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextLinkPattern"

    invoke-static {p10, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prevLinkPattern"

    invoke-static {p11, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whitespacePattern"

    invoke-static {p12, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hasContentPattern"

    invoke-static {p13, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v1, "Pattern.compile(unlikely\u2026Pattern.CASE_INSENSITIVE)"

    invoke-static {p1, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljs7;->a:Ljava/util/regex/Pattern;

    .line 2
    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "Pattern.compile(okMaybeI\u2026Pattern.CASE_INSENSITIVE)"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljs7;->b:Ljava/util/regex/Pattern;

    .line 3
    invoke-static {p3, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "Pattern.compile(positive\u2026Pattern.CASE_INSENSITIVE)"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljs7;->c:Ljava/util/regex/Pattern;

    .line 4
    invoke-static {p4, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "Pattern.compile(negative\u2026Pattern.CASE_INSENSITIVE)"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljs7;->d:Ljava/util/regex/Pattern;

    .line 5
    invoke-static {p5, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "Pattern.compile(extraneo\u2026Pattern.CASE_INSENSITIVE)"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p6, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "Pattern.compile(bylinePa\u2026Pattern.CASE_INSENSITIVE)"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljs7;->e:Ljava/util/regex/Pattern;

    .line 7
    invoke-static {p7, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "Pattern.compile(replaceF\u2026Pattern.CASE_INSENSITIVE)"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "Pattern.compile(normalizePattern)"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljs7;->f:Ljava/util/regex/Pattern;

    .line 9
    invoke-static {p9, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "Pattern.compile(videosPa\u2026Pattern.CASE_INSENSITIVE)"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljs7;->g:Ljava/util/regex/Pattern;

    .line 10
    invoke-static {p10, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "Pattern.compile(nextLink\u2026Pattern.CASE_INSENSITIVE)"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p11, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "Pattern.compile(prevLink\u2026Pattern.CASE_INSENSITIVE)"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "Pattern.compile(whitespacePattern)"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljs7;->h:Ljava/util/regex/Pattern;

    .line 13
    invoke-static {p13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "Pattern.compile(hasContentPattern)"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljs7;->i:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "matchString"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ljs7;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "matchString"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ljs7;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "matchString"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ljs7;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method
